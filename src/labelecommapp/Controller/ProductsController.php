<?php
App::uses('AppController', 'Controller');
/**
 * Products Controller
 *
 * @property Product $Product
 */
class ProductsController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();
		$this->Auth->allow('index', 'view', 'summary'); // allow for anonymous
	}

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Product->recursive = 0;
		$this->set('products', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Product->exists($id)) {
			throw new NotFoundException(__('Invalid product'));
		}

		$data = $this->Product->getViewVars($id);
		$result = $this->Product->ProductRepresentativeImage->find('first', array('conditions' => array('ProductRepresentativeImage.product_id' => $id)));
		if ($result) {
			$this->set('rep_img', $result['ProductRepresentativeImage']['view_url']);
		}
		$this->set('product', $data);
	}


/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Product->recursive = 0;
		$this->set('products', $this->paginate());
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->Product->exists($id)) {
			throw new NotFoundException(__('Invalid product'));
		}
		$options = array('conditions' => array('Product.' . $this->Product->primaryKey => $id));
		$this->set('product', $this->Product->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {

			// this is the point we will save the data to database
			if ($this->Product->createWithDefaultVariant($this->request->data)) {
				$this->Session->setFlash(__('The product has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product could not be saved. Please, try again.'));
			}
		}
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->set('id', $id);
		$findElem = $this->Product->find('first', array('conditions' => array('Product.id' => $id)));
		$rep_img_array = $this->Product->ProductRepresentativeImage->find('first', array('conditions' => array('ProductRepresentativeImage.product_id' => $id)));
		if(!empty($rep_img_array)){
			$this->set('rep_img', $rep_img_array['ProductRepresentativeImage']['view_url']);
		}
		if (!$this->Product->exists($id)) {
			throw new NotFoundException(__('Invalid product'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Product->save($this->request->data)) {
				$this->Session->setFlash(__('The product has been saved'));
				
				$this->Product->updateProductVariantsPrice($this->request->data);
				$this->Product->updateCartItemsPrices();
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product could not be saved. Please, try again.'));
			}

		} else {
			$options = array('conditions' => array('Product.' . $this->Product->primaryKey => $id));
			$this->request->data = $this->Product->find('first', $options);
		}
	}

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Product->id = $id;
		if (!$this->Product->exists()) {
			throw new NotFoundException(__('Invalid product'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Product->delete()) {
			$this->Session->setFlash(__('Product deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Product was not deleted'));
		$this->redirect(array('action' => 'index'));
	}

/**
 *
 * Summary method
 *
 */
	public function summary() {
		$products = $this->Product->find('all');

		foreach($products as $key => $product){
			$conditions = array('conditions' => array('ProductRepresentativeImage.product_id' => $product['Product']['id']));
			$rep_img_array = $this->Product->ProductRepresentativeImage->find('first', $conditions);
			$products[$key] = $products[$key] + $rep_img_array;

		}
		$this->set('products', $products);


	}

}

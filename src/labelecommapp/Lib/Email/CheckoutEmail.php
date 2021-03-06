<?php
App::uses('CakeEmail', 'Network/Email');

class CheckoutEmail {

	private $emailConfig = 'gmail';
	private $sender = 'sales@childlabel.com';
	private $childlabel = 'sales@childlabel.com';

	private $from;
	private $to;

	private $email;

	public function __construct($to) {
		$this->from	= array('full_name' => 'ChildLabel', 'email' => $this->childlabel);
		$this->to	= $to;
		$this->cc = array('full_name' => 'ChildLabel', 'email' => $this->childlabel);

		$this->_prepareAddressFields();
	}

	protected function _prepareAddressFields() {
		$fromEmail	= $this->from['email'];
		$fromFullName	= $this->from['full_name'];

		$toEmail	= $this->to['email'];
		$toFullName	= $this->to['full_name'];

		$ccEmail	= $this->cc['email'];
		$ccFullName	= $this->cc['full_name'];

		$email = new CakeEmail($this->emailConfig);

		$email->from(array($fromEmail => $fromFullName));
		$email->to(array($toEmail => $toFullName));
		$email->cc(array($ccEmail => $ccFullName));
		$email->sender($this->sender);
		$email->replyTo($fromEmail, $fromFullName);
		$this->email = $email;
		return $email;
	}

	public function sendCheckoutEmail($cartData) {
		$email = $this->email;
		$email->subject('Thank you for purchasing from ChildLabel! ' . $cartData['payment_options']);
		$email->template('successful_done');
		$email->emailFormat('html');
		$email->viewVars(array('cartData'=>$cartData,
						'fullName' => $this->to['full_name'],
						'email' => $this->to['email']));
		if (EMAIL_ON) {
			$result = $email->send();
		} else {
			$result = $email;
		}
		return $result;
	}
}
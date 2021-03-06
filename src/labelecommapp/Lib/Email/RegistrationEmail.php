<?php
App::uses('CakeEmail', 'Network/Email');

class RegistrationEmail {

	private $emailConfig = 'gmail';
	private $sender = 'sales@childlabel.com';
	private $childlabel = 'sales@childlabel.com';

	private $from;
	private $to;

	private $email;

	public function __construct($to) {
		$this->from	= array('full_name' => 'ChildLabel', 'email' => $this->childlabel);
		$this->to	= $to;

		$this->_prepareAddressFields();
	}

	protected function _prepareAddressFields() {
		$fromEmail	= $this->from['email'];
		$fromFullName	= $this->from['full_name'];

		$toEmail	= $this->to['email'];
		$toFullName	= $this->to['full_name'];

		$email = new CakeEmail($this->emailConfig);

		$email->from(array($fromEmail => $fromFullName));
		$email->to(array($toEmail => $toFullName));
		$email->sender($this->sender);
		$email->replyTo($fromEmail, $fromFullName);
		$this->email = $email;
		return $email;
	}

	public function sendWelcomeNewUserEmail($welcomeMessage) {
		$email = $this->email;
		$email->subject('Welcome to Childlabel!');

		if (EMAIL_ON) {
			$result = $email->send("$welcomeMessage");
		} else {
			$result = $email;
		}
		return $result;
	}
}
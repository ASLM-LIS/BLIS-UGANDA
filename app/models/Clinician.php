<?php

class Clinician extends \Eloquent {
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'clinicians';
	protected $fillable = [];
	
	//Test Relationship
	public function tests(){
		return $this->hasMany('UnhlsTest');
	}
	
	public function getClinician()
	{
		return Clinician::find($this->clinician_id);
	}
}
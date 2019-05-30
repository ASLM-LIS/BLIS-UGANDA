<?php

class Clinician extends \Eloquent {
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'clinicians';
	protected $fillable = [];

	/**
	 * Clinician origin 
	 */
	
	const FACILITY_CLINICIAN = 1;
	const FIELD_CLINICIAN = 2;

	//Test Relationship
	public function tests(){
		return $this->hasMany('UnhlsTest');
	}
	

	/* 
	 * Returns the id of the last field clinicain entered
	 * For Field clinicians entered on the fly we assume the last entry id
	 * Not the best solution, needs a better work around
	 */ 


	public function getLastClinician(){
		$clinicianID = Clinician::where('location', '=', '2')->orderBy('id', 'desc')->first()->id;

		return $clinicianID;
	}

}
<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class UpdateUnhlsTests extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::update('ALTER TABLE unhls_tests ADD COLUMN approved_by int ');
        DB::update('ALTER TABLE unhls_tests ADD COLUMN time_approved timestamp ');
        DB::update('ALTER TABLE unhls_tests ADD COLUMN clinician_id INT after requested_by');
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('unhls_tests', function(Blueprint $table)
		{
			
		});
	}

}

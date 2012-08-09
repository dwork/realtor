<?php

/**
 * Implements hook_install_tasks().
 */
function realtor_install_tasks($install_state) {
  return array(
    // Just a hidden task callback.
    'oip_profile_setup' => array(),
  );
}

/**
 * Installer task callback.
 */
function oip_profile_setup() {

        # SMTP module defaults
        variable_set('smtp_on','1');
        variable_set('smtp_username','crxymail');
        variable_set('smtp_password','crxy010#');
        variable_set('smtp_port','587');
        variable_set('smtp_host','smtp.earthclick.net');
        variable_set('smtp_fromname','OIP');
        variable_set('smtp_from','dwork@oip.net');

       // Create vocabularies
        oip_create_taxonomy('Designations','designations','Realtor Designations','Enter a  valid Realtor Designation');
        oip_create_taxonomy('Property Type','property_type','Type of Property','Enter a valid Property type');
        oip_create_taxonomy('Phone Type','phone_types','Phone/Message types','Enter a valid Phone or Message category');

        // Real Estate designations
        oip_create_taxonomy_term('ABR','Accredited Buyers Representative / ABR®', 'designations');
        oip_create_taxonomy_term('AHWS','At Home with Diversity / AHWD®', 'designations');
        oip_create_taxonomy_term('ALC','Accredited Land Consultant / ALC(sm)','designations');
        oip_create_taxonomy_term('BPRO','Broker Price Opinion Resource (BPOR)','designations');
        oip_create_taxonomy_term('CCIM','Certified Commercial Investment Member / CCIM(sm)','designations');
        oip_create_taxonomy_term('CIPS','Certified International Property Specialist / CIPS®','designations');
        oip_create_taxonomy_term('CPM','Certified Property Manager / CPM®','designations');
        oip_create_taxonomy_term('CRB','Certified Real Estate Brokerage Manager / CRB(sm)','designations');
        oip_create_taxonomy_term('CRE','Counselor of Real Estate / CRE®','designations');
        oip_create_taxonomy_term('CRS','Certified Residential Specialist® / CRS®','designations');
        oip_create_taxonomy_term('e-PRO','e-PRO® Electronic Certified Professional','designations');
        oip_create_taxonomy_term('GAA','General Accredited Appraiser, GAA(sm)','designations');
        oip_create_taxonomy_term('GREEN','NARs Green Designation / GREEN','designations');
        oip_create_taxonomy_term('GRI','Graduate, REALTOR® Institute / GRI(sm)','designations');
        oip_create_taxonomy_term('PMN','Performance Management Network / PMN','designations');
        oip_create_taxonomy_term('RAA','Residential Accredited Appraiser / RAA(sm)','designations');
        oip_create_taxonomy_term('RCE','REALTOR® Association Certified Executive / RCE','designations');
        oip_create_taxonomy_term('RSPS','Resort & Second-Home Property Specialist / RSPS','designations');
        oip_create_taxonomy_term('SFR','Short Sales & Foreclosures Resource / SFR','designations');
        oip_create_taxonomy_term('SIOR','Society of Industrial and Office REALTORS® / SIOR®','designations');
        oip_create_taxonomy_term('SRES','Seniors Real Estate Specialist®, SRES®','designations');

        // Property Type
        oip_create_taxonomy_term('Residential','Residential or Farm/Ranch','property_type');
        oip_create_taxonomy_term('MultiFamily','MultiFamily - Duplex, Apartment, etc.','property_type');
        oip_create_taxonomy_term('Lots and Land','Lots, land, acreage','property_type');
        oip_create_taxonomy_term('Comm/Industrial','Commercial and industrial property','property_type');
        oip_create_taxonomy_term('Commercial Lease','Commercial Lease or Rental','property_type');
        oip_create_taxonomy_term('Rental','Rental Property','property_type');

        // Phone Type
        oip_create_taxonomy_term('Office', 'Office Phone', 'phone_types');
        oip_create_taxonomy_term('Direct', 'Direct Phone', 'phone_types');
        oip_create_taxonomy_term('Home', 'Home Phone', 'phone_types');
        oip_create_taxonomy_term('Phone', 'Phone', 'phone_types');
        oip_create_taxonomy_term('Cell','Cell/Mobile', 'phone_types');
        oip_create_taxonomy_term('Fax','Faxsimile', 'phone_types');
        oip_create_taxonomy_term('Message', 'Message Phone','phone_types');
        oip_create_taxonomy_term('Pager', 'Pager', 'phone_types');

}

/*
 * Create taxonomy vocabulary
*/
function oip_create_taxonomy($name,$machine_name,$description,$help) {
  $vocabulary = (object) array(
    'name' => $name,
    'description' => $description,
    'machine_name' => $machine_name,
    'help' => $help,
  );
  taxonomy_vocabulary_save($vocabulary);

}

/*
 * Create taxonomy terms give machine name ($mac)
 */
function oip_create_taxonomy_term($name,$description,$machine_name) {
  $voc = taxonomy_vocabulary_machine_name_load($machine_name);
  $term = new stdClass();
  $term->name = $name;
  $term->description = $description;
  if (isset($voc)) {
        $term->vid = $voc->vid;
  } else {
        $term->vid = 1;
  }
  taxonomy_term_save($term);
  return $term->tid;
}




<?php

class ArtisanHasSwipeStripeProductExtension extends ArtisanModelExtension {
    const FieldName = 'SwipeStripeProduct';

    private static $has_one = [
        self::FieldName => 'SiteTree'
    ];

    private static $tab_name = 'Root.Main';

    private static $insert_field_before = 'Content';

    private static $add_to_form = true;

    private static $add_to_grid = false;

    public function updateCMSFields(FieldList $fields) {
        $idField = self::FieldName . 'ID';

        $fields->removeByName($idField);

        if ($this->showOnCMSForm('add_to_form')) {
            $fields->addFieldToTab(
                self::get_config_setting('tab_name'),
                new DisplayLogicWrapper(
                    new TreeDropdownField(
                        $idField,
                        _t("ArtisanHasSwipeStripeProductExtension.Label", 'Link block to product'),
                        'SiteTree'
                    )
                ),
                self::get_config_setting('insert_field_before') ?: null
            );
        }
    }

}
enum ProviderType {
  therapy('Therapy'),
  group('Groups'),
  psychiatry('Psychiatry'),
  inpatient('Inpatient'),
  all('All');

  final String displayValue;

  const ProviderType(this.displayValue);
}

enum PreferenceType {
  location(1, 'Location'),
  insurance(2, 'Insurance'),
  topicsOfInterest(3, 'Topics of Interest'),
  serviceType(4, 'Service Type'),
  cultureAndFaith(5, 'Culture & Faith'),
  genderAndSexuality(6, 'Gender & Sexuality');

  final int intValue;
  final String displayValue;

  const PreferenceType(this.intValue, this.displayValue);
}

enum LocationPreference {
  phoneLocation('Use my phone’s current location'),
  zipCode('Use a zip code'),
  searchWholeState('Search my whole state');

  final String displayValue;

  const LocationPreference(this.displayValue);
}

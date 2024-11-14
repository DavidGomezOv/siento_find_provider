enum ProviderType {
  therapy('Therapy'),
  group('Groups'),
  psychiatry('Psychiatry'),
  inpatient('Inpatient'),
  all('All');

  final String displayValue;

  const ProviderType(this.displayValue);
}

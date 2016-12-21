class Parser {

  private var languageConfig: LanguageConfig;
  public function new(language: String) {
    this.languageConfig = new LanguageConfig(language);
    trace(this.languageConfig.getAllBookLabels());
  }
}

class ChapterVerseSeparator {}

class ListSeparator {}

class LanguageConfig {
	private var books: Array<Book>;
	private var chapterVerseSeparators: Array<String>;
	private var listSeparators: Array<String>;

	public function new(language: String) {
		var db = new HaxeLow('resources/$language.json');
		this.books = db.col(Book);
		this.chapterVerseSeparators = cast db.col(ChapterVerseSeparator);
		this.listSeparators = cast db.col(ListSeparator);
	}

	public function getAllBookLabels(): Array<String> {
		var result: Array<String> = [];
		for (book in this.books) {
			result.concat(book.labels);
		};
		return result;
	}

	public function getChapterVerseSeparators(): Array<String> {
		return this.chapterVerseSeparators;
	}

	public function getListSeparators(): Array<String> {
		return this.listSeparators;
	}
}

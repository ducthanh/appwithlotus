require 'features_helper'

describe 'List of books' do
	visit '/books'

	within '#books' do
		assert page.has_css?('.book', count: 2), "Expected to find 2 books"
	end
end
# model_fields_i18n

## DESCRIPTION:

  Translates model fields stored in the same model

## INSTALLATION:

Add `model_fields_i18n` in the Gemfile:

    gem "model_fields_i18n"

## USAGE:

`model_fields_i18n` only adds method `t(:column)` to all models which returns translation based on the current I18n.locale. By convention, the default field doesn't have locale symbol at the end, while the other translations have. See following examples

    post = Post.create(:title => "Наслов", :title_en => "Title", :title_fr => "Titre")
    post.t(:title) # => returns field value in current I18n.locale

    I18n.locale = :mk
    post.t(:title) # => Наслов

    I18n.locale = :en
    post.t(:title) # => Title

    I18n.locale = :fr
    post.t(:title) # => Titre

## LICENSE:

(The MIT License)

Copyright (c) 2011 Dalibor Nasevic

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

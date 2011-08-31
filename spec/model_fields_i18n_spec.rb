require 'spec_helper'

describe "model_fields_i18n" do
  subject { Post.create(:title => "Наслов", :content => "Содржина",
                        :title_en => "Title", :content_en => "Content",
                        :title_fr => "Titre", :content_fr => "Contenu") }

  context "default locale is :mk and current locale is :mk" do
    it "returns original field value" do
      I18n.default_locale = :mk
      I18n.locale         = :mk

      subject.t(:title).should == "Наслов"
      subject.t(:content).should == "Содржина"
    end
  end

  context "default locale is :mk and current locale is :en" do
    it "returns original field value" do
      I18n.default_locale = :mk
      I18n.locale         = :en

      subject.t(:title) == "Title"
      subject.t(:content).should == "Content"
    end
  end

  context "default locale is :mk and current locale is :fr" do
    it "returns original field value" do
      I18n.default_locale = :mk
      I18n.locale         = :fr

      subject.t(:title).should == "Titre"
      subject.t(:content).should == "Contenu"
    end
  end
end

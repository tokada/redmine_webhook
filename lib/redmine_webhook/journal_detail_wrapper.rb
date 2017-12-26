module RedmineWebhook
  class JournalDetailWrapper
    include IssuesHelper

    def initialize(journal_detail)
      @journal_detail = journal_detail
    end

    def to_hash
      {
        :id => @journal_detail.id,
        :value => @journal_detail.value,
        :old_value => @journal_detail.old_value,
        :prop_key => @journal_detail.prop_key,
        :property => @journal_detail.property,
        :string => details_to_strings([@journal_detail], true).compact.to_a.first
      }
    end
  end
end

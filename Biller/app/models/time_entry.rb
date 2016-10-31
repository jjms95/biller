class TimeEntry < AccountEntry
	belongs_to :employee, required: false
end

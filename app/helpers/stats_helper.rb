module StatsHelper
	def aggregate(data, criteria)
    a = 0
    data.each { |row|
      match = 1
      criteria.each { |k, v|
        match = 0 unless (row[k].to_s == v.to_s) || (k == 'closed' &&  (v == 0 ? ['f', false] : ['t', true]).include?(row[k]))
      } unless criteria.nil?
      a = a + row["total"].to_i if match == 1
    } unless data.nil?
    a
  end

  def aggregate_link(data, criteria, *args)
    a = aggregate data, criteria
    a > 0 ? link_to(h(a), *args) : '-'
  end

  def aggregate_path(project, field, row, options={})
    parameters = {:set_filter => 1, :subproject_id => '!*', field => row.id}.merge(options)
    # project_issues_path(row.is_a?(Project) ? row : project, parameters)
  end


  def format_date(datetime)
    datetime.strftime "%Y-%m-%d" unless datetime.nil?
  end

  def formated_dates(dates)
    [format_date(dates[:begin_date]), format_date(dates[:end_date])]
  end



end

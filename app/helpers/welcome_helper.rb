module WelcomeHelper
 # def date_formate(created_at)
 #  a = (job.created_at).to_i 

 #  case a
 #  when 0 then 'just now'
 #  when 1 then 'a second ago'
 #  when 2..59 then a.to_s+' seconds ago' 
 #      when 60..119 then 'a minute ago' #120 = 2 minutes
 #      when 120..3540 then (a/60).to_i.to_s+' minutes ago'
 #      when 3541..7100 then 'an hour ago' # 3600 = 1 hour
 #      when 7101..82800 then ((a+99)/3600).to_i.to_s+' hours ago' 
 #      when 82801..172000 then 'a day ago' # 86400 = 1 day
 #      when 172001..518400 then ((a+800)/(60*60*24)).to_i.to_s+' days ago'
 #      when 518400..1036800 then 'a week ago'
 #      else ((a+180000)/(60*60*24*7)).to_i.to_s+' weeks ago'
 #      end
 #    end

    # case created_at
    # when created_at.today
    #   'Today'
    # when created_at.yesterday
    #   'Yesterday'
    # else
    #   date.strftime('%dth %B %Y')
    # end

    Time::DATE_FORMATS[:humanized_ago]  = ->(time) do
      st = Time.now.beginning_of_day
      nd = Time.now.end_of_day

      case 
      when time.between?(st + 1.day, nd + 1.day)
        "Tomorrow #{time.strftime('%H:%M')}"
      when time.between?(st, nd)
        "Today #{time.strftime('%H:%M')}"
      when time.between?(st - 1.day, nd - 1.day)
        "Yesterday #{time.strftime('%H:%M')}"
      when time.between?(st - 6.day, nd - 2.day)
        time.strftime('%a %H:%M')
      else 
        time.strftime('%y-%b-%d %H:%M')
      end
    end

  end

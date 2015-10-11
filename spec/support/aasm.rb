#RSpec::Matchers.define :transition_from do |from_state|
  #match do |obj|
    #obj.state = from_state.to_s
    #expect(obj).to receive(:broadcast_event).with(@event.to_s, obj, from_state, @to_state)
    #obj.send(@event) && obj.state == @to_state.to_s
  #end

  #chain :to do |state|
    #@to_state = state
  #end

  #chain :on_event do |event|
    #@event = event
  #end

  #description do
    #"transition state to :#{@to_state} from :#{expected} on event :#{@event}"
  #end

  #failure_message do |obj|
    #"expected that :#{obj.state} would be :#{@to_state}"
  #end

  #failure_message_when_negated do |obj|
    #"expected that :#{obj.state} would not be :#{@to_state}"
  #end
#end

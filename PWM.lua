PWM = (function(hz, duty)
    hz = 1 / hz
    local this = {}
    this.Time = system.getTime()
    this.GetState = function()
        this.Time = system.getTime()
        local span = this.Time % hz
        if span >= (hz * duty) then
        	return false
        end
        return true
    end
    
    return this
end)

pwm = PWM(2,1)
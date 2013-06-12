

class User
    constructor:(obj)->
        @caps = CONFIG.groups[obj.group]
        @displayName = obj.disp_name
        @meta = obj.info
        @ID = obj._id.toHexString()

    canDo:(cap)=>@caps.indexOf(cap) != -1


module.exports = User


mongoose = require('mongoose')
Schema = mongoose.Schema
TestSchema = new Schema({
  name: {
    type: String
    required: true
  }
  username: {
    type: String
    unique: true
    required: true
  }
  roles: {
    type: Array
    default: ['authenticated']
  }
})

TestSchema.methods = {
  hasRole: (role) ->
    role in @roles
}

mongoose.model('Test', TestSchema)
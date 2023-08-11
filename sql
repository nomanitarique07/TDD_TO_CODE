const mongoose = require('mongoose');

const memberSchema = new mongoose.Schema({
  memberId: String,
  email: String,
  firstName: String,
  lastName: String,
  dob: Date,
  address: String,
  zipCode: String,
  phoneNumber: String
});

const claimSchema = new mongoose.Schema({
  claimId: String,
  dateOfService: Date,
  dateSigned: Date,
  description: String,
  amount: Number,
  zipCode: String,
  otherInsuranceInd: Boolean,
  othPolicyNbr: String,
  submitterNm: String,
  claimType: String,
  renderingState: String,
  injuryInd: Boolean,
  memberClaimsDetails: [String]
});

const providerSchema = new mongoose.Schema({
  provTaxId: String,
  firstName: String,
  lastName: String,
  dob: Date,
  address: String,
  phoneNumber: String
});

module.exports = {
  Member: mongoose.model('Member', memberSchema),
  Claim: mongoose.model('Claim', claimSchema),
  Provider: mongoose.model('Provider', providerSchema)
};

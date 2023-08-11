const express = require('express');
const { Member, Claim, Provider } = require('./models');

const router = express.Router();

router.post('/api/auth/login', (req, res) => {
  // Authentication logic here
});

router.post('/api/claims', (req, res) => {
  // Claims submission logic here
});

router.get('/api/claims', (req, res) => {
  // Retrieve all claims logic here
});

router.get('/api/claims/:claimId', (req, res) => {
  // Retrieve specific claim logic here
});

module.exports = router;

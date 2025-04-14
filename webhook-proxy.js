const express = require('express');
const axios = require('axios');
const app = express();
const port = process.env.PORT || 3000;

// Parse JSON bodies
app.use(express.json());

// Store webhook mappings
const webhookMappings = new Map();

// Register a webhook
app.post('/register-webhook', (req, res) => {
  const { path, uuid } = req.body;
  if (!path || !uuid) {
    return res.status(400).json({ error: 'Missing path or uuid' });
  }
  
  const webhookId = `${path}/${uuid}`;
  webhookMappings.set(webhookId, {
    path,
    uuid,
    createdAt: new Date()
  });
  
  console.log(`Registered webhook: ${webhookId}`);
  res.json({ success: true, webhookId });
});

// Handle webhook requests
app.post('/form-test/:uuid', async (req, res) => {
  const uuid = req.params.uuid;
  const webhookId = `form-test/${uuid}`;
  
  if (!webhookMappings.has(webhookId)) {
    console.log(`Webhook not found: ${webhookId}`);
    return res.status(404).json({ error: 'Webhook not found' });
  }
  
  try {
    // Forward the request to n8n
    const n8nUrl = `http://localhost:5678/webhook/${webhookId}`;
    console.log(`Forwarding to: ${n8nUrl}`);
    
    const response = await axios.post(n8nUrl, req.body, {
      headers: {
        'Content-Type': 'application/json'
      }
    });
    
    res.status(response.status).json(response.data);
  } catch (error) {
    console.error('Error forwarding webhook:', error.message);
    res.status(500).json({ error: 'Failed to forward webhook' });
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Webhook proxy server running on port ${port}`);
}); 
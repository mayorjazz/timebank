# TimeBank: Decentralized Time Exchange Protocol

A Bitcoin-native time banking protocol built on Stacks Layer 2 that enables secure peer-to-peer exchange of time-based services with integrated reputation tracking and skill verification.

## Overview

TimeBank is a decentralized platform that allows users to exchange time and skills in a secure, transparent, and trustless manner. Built on Stacks Layer 2 with Bitcoin anchoring, it provides a robust infrastructure for community-based time banking with built-in reputation systems.

## Features

### Core Functionality

- **Time Exchange System**: Facilitate peer-to-peer time-based service exchanges
- **Skill Verification**: Official verification system for user skills
- **Reputation Tracking**: Track user engagement and reliability
- **Smart Contract Security**: Comprehensive error handling and access controls

### Technical Highlights

- Bitcoin-anchored security
- Stacks Layer 2 scalability
- sBTC compatibility
- Immutable event logging
- Role-based access control

## Smart Contract Structure

### Data Maps

- `users`: Stores user profiles and statistics
- `skills`: Maintains the registry of available skills
- `user-skills`: Tracks verified skills for each user
- `time-exchanges`: Records all time exchange transactions
- `event-log`: Maintains a permanent record of all contract events

### Key Functions

#### User Management

- `register-user`: Create new user profile
- `get-user-info`: Retrieve user information

#### Skill Management

- `register-skill`: Add new skill to the registry
- `verify-user-skill`: Verify a user's proficiency in a skill
- `get-skill-info`: Get skill details

#### Exchange Operations

- `create-exchange`: Initiate a new time exchange
- `accept-exchange`: Accept a pending exchange
- `complete-exchange`: Mark an exchange as completed
- `cancel-exchange`: Cancel an active or pending exchange

### Constants

```clarity
;; Error Codes
ERR_UNAUTHORIZED (u1001)
ERR_INVALID_TIME (u1002)
ERR_INSUFFICIENT_BALANCE (u1003)
ERR_SKILL_NOT_VERIFIED (u1004)
ERR_INVALID_PARAMS (u1005)
ERR_ALREADY_VERIFIED (u1006)
ERR_NOT_FOUND (u1007)
ERR_ALREADY_COMPLETED (u1008)
ERR_SELF_EXCHANGE (u1009)
```

## Usage Examples

### Registering a User

```clarity
;; Call register-user to create a new profile
(contract-call? .timebank register-user)
```

### Creating a Time Exchange

```clarity
;; Create a 2-hour programming tutoring exchange
(contract-call? .timebank create-exchange "programming-tutoring" u2 'SP2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKNRV9EJ7)
```

### Verifying Skills

```clarity
;; Verify a user's programming skill
(contract-call? .timebank verify-user-skill 'SP2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKNRV9EJ7 "programming")
```

## Security Considerations

### Access Control

- Contract owner has exclusive rights to:
  - Register new skills
  - Verify user skills
  - Modify exchange duration limits

### Exchange Safety

- Minimum and maximum exchange durations enforced
- Prevention of self-exchanges
- Status-based state transitions
- Skill verification requirements

### Data Integrity

- Immutable event logging
- Bitcoin anchoring for critical operations
- Protected state transitions

## Compliance

The contract implements several compliance measures:

- OFAC-compliant user registration
- Immutable audit trails
- Deterministic state management
- Bitcoin-first security principles

## Technical Requirements

- Stacks 2.4 or later
- Clarity 2.0 compatible
- sBTC integration support

## Development and Testing

### Local Development

1. Clone the repository
2. Install Clarinet

### Deployment

1. Deploy to testnet for initial testing
2. Verify all functions and security measures
3. Deploy to mainnet with appropriate owner credentials

## Contributing

1. Fork the repository
2. Create a feature branch
3. Submit a pull request with:
   - Comprehensive tests
   - Documentation updates
   - Clarity code following style guide

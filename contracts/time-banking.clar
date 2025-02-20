;; TimeBank: Decentralized Time Exchange Protocol
;;
;; A Bitcoin-native time banking protocol built on Stacks Layer 2, enabling 
;; secure peer-to-peer exchange of time-based services with reputation tracking.
;;
;; Architecture & Compliance:
;; - Implements sBTC-compatible state transitions for L2 scalability
;; - Follows Bitcoin-first principles with deterministic state management
;; - Ensures OFAC compliance through verified user registration
;; - Maintains immutable audit trail through Bitcoin anchoring
;;
;; Security Features:
;; - Role-based access control with owner privileges
;; - Skill verification system with reputation requirements
;; - Protected state transitions with comprehensive error handling
;; - Event logging with permanent Bitcoin timestamping
;;
;; Note: This contract is designed for Stacks Layer 2, optimizing for 
;; high throughput while maintaining Bitcoin's security guarantees.


;; Constants and Error Codes
(define-constant CONTRACT_OWNER tx-sender)
(define-constant ERR_UNAUTHORIZED (err u1001))
(define-constant ERR_INVALID_TIME (err u1002))
(define-constant ERR_INSUFFICIENT_BALANCE (err u1003))
(define-constant ERR_SKILL_NOT_VERIFIED (err u1004))
(define-constant ERR_INVALID_PARAMS (err u1005))
(define-constant ERR_ALREADY_VERIFIED (err u1006))
(define-constant ERR_NOT_FOUND (err u1007))
(define-constant ERR_ALREADY_COMPLETED (err u1008))
(define-constant ERR_SELF_EXCHANGE (err u1009))

;; Data Structures
(define-map users
    principal
    {
        joined-at: uint,
        total-hours-given: uint,
        total-hours-received: uint,
        reputation-score: uint,
        is-active: bool
    })
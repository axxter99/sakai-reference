-- SAK-42700 add indexes via JPA for common queries 

ALTER TABLE rbc_evaluation 
  MODIFY COLUMN ownerType varchar(99),
  MODIFY COLUMN evaluated_item_owner_id varchar(99),
  MODIFY COLUMN evaluator_id varchar(99),
  MODIFY COLUMN creatorId varchar(99),
  MODIFY COLUMN ownerId varchar(99),
  ADD INDEX rbc_eval_owner(ownerId);

ALTER TABLE rbc_tool_item_rbc_assoc
  MODIFY COLUMN ownerType varchar(99),
  MODIFY COLUMN toolId varchar(99),
  MODIFY COLUMN creatorId varchar(99),
  MODIFY COLUMN ownerId varchar(99),
  ADD INDEX rbc_tool_item_owner(toolId, itemId, ownerId);

ALTER TABLE rbc_criterion
  MODIFY COLUMN ownerType varchar(99),
  MODIFY COLUMN creatorId varchar(99),
  MODIFY COLUMN ownerId varchar(99);

ALTER TABLE rbc_rating
  MODIFY COLUMN ownerType varchar(99),
  MODIFY COLUMN creatorId varchar(99),
  MODIFY COLUMN ownerId varchar(99);

ALTER TABLE rbc_rubric
  MODIFY COLUMN ownerType varchar(99),
  MODIFY COLUMN creatorId varchar(99),
  MODIFY COLUMN ownerId varchar(99);

-- END SAK-42700

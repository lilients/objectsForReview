{**
 * plugins/generic/objectsForReview/templates/metadataForm.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * The included template that is hooked into Templates::Submission::SubmissionMetadataForm::AdditionalMetadata.
 *}
 
{if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR, ROLE_ID_ASSISTANT, ROLE_ID_AUTHOR), (array)$userRoles)}
<div id="fundref">
	{url|assign:objectsForReviewGridUrl router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.objectsForReview.controllers.grid.ObjectsForReviewGridHandler" op="fetchGrid" submissionId=$submissionId escape=false}
	{load_url_in_div id="objectsForReviewGridContainer"|uniqid url=$objectsForReviewGridUrl}	
</div>
{/if}
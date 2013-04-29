<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"/>
<div id="contentwrapper">
<div class="main_content">
<div class="row-fluid">
<div class="span12">
           	<form class="form-horizontal well" method="POST" action="">
										<fieldset>
											<p class="f_legend">Create Bulk API Job</p>
											<div class="control-group">
												<label class="control-label">Job Name</label>
												<div class="controls">
													<input type="text" class="span5" />
													<span class="help-block">block Job Name</span>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">Environment</label>
												<div class="controls">
													<select class="span5" name="environment">
														<option>sandbox</option>
														<option>production</option>
													</select>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">Operation</label>
												<div class="controls">
													<select class="span5" name="operations">
														<option>query</option>
														<option>insert</option>
														<option>delete</option>
														<option>hardDelete</option>
														<option>update</option>
														<option>upsert</option>
													</select>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">Export Medium</label>
												<div class="controls">
													<select class="span5" name="export_option">
														<option>csv</option>
														<option>mysql</option>
													</select>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">SObject</label>
												<div class="controls">
													<select class="span5" name="sobject">
													<c:forEach items="${types}" var="type">
														<option>${type['name']}</option>
													</c:forEach>
													</select>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">Query String</label>
												<div class="controls">
													<textarea cols="30" rows="5" class="span5" name="query_string"></textarea>
													<span class="help-block">query string here</span>
												</div>
											</div>
											<input type="file" name="uni_file" id="uni_file" class="uni_style" />
											
											
											<div class="control-group">
												<div class="controls">
													<button class="btn btn-primary" type="submit">Create Job</button>
												</div>
											</div>
										</fieldset>
									</form>
           
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"/>
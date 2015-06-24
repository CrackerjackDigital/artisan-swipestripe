<article class="$ExtraCSSClasses">
	<% if $Product %> <a href="$Product.Link"> <% end_if %>

	<hgroup>
		<h1>$Product.Title</h1>
		<h3 class="artisan-sw-price-js">$Product.Price.Nice</h3>
	</hgroup>
	<div class="artisan-sw-form">
		$ProductForm(1)
	</div>
	<div class="artisan-sw-description">
		$Product.Content
	</div>

	<% if $Product %>  </a>  <% end_if %>

	$ArtisanHasImages.First
</article>



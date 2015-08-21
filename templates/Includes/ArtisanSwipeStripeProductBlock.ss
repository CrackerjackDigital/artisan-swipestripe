<article class="$ExtraCSSClasses">
	<% if $SwipeStripeProduct %> <a href="$SwipeStripeProduct.Link"> <% end_if %>

	<hgroup>
		<h1>$SwipeStripeProduct.Title</h1>
		<h3 class="artisan-sw-price-js">$SwipeStripeProduct.Price.Nice</h3>
	</hgroup>
	<div class="artisan-sw-form">
		$ProductForm(1)
	</div>
	<div class="artisan-sw-description">
		$SwipeStripeProduct.Content
	</div>

	<% if $SwipeStripeProduct %>  </a>  <% end_if %>

	$ArtisanHasImages.First
</article>




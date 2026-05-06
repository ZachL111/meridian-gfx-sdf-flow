import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(80, 21, 26, 55);
  assert(DomainReviewLens.score(item) == 158);
  assert(DomainReviewLens.lane(item) == 'ship');
}

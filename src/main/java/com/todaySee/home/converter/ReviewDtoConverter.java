package com.todaySee.home.converter;

import com.todaySee.domain.Review;
import com.todaySee.home.dto.ReviewDto;

public class ReviewDtoConverter {

    private ReviewDtoConverter() {}

    public static ReviewDto reviewToReviewDto(Review review) {
        ReviewDto reviewDto = new ReviewDto();

        reviewDto.setReviewNumber(review.getReviewNumber());
        reviewDto.setReviewContent(review.getReviewContent());
        reviewDto.setReviewLike(review.getReviewLike());
        reviewDto.setReviewDate(review.getReviewDate());
        reviewDto.setReviewSpoiler(review.getReviewSpoiler());
        reviewDto.setContent(review.getContent());
        reviewDto.setUser(review.getUser());
        reviewDto.setReport(review.getReport());

        return reviewDto;
    }

}

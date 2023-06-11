package main

import (
	"context"
	"fmt"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func handle(ctx context.Context, request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	name := request.QueryStringParameters["name"]

	return events.APIGatewayProxyResponse{
		Body:       fmt.Sprintf("{\"status\": \"success\",\"name\": \"%s\"}", name),
		StatusCode: 200,
		Headers: map[string]string{
			"Content-Type": "application/json",
		},
	}, nil
}

func main() {
	lambda.Start(handle)
}

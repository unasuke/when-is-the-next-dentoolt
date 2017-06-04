package main

import "gopkg.in/gin-gonic/gin.v1"

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"date":   "2017-06-04T04:30:00.000Z",
			"server": "golang/gin",
		})
	})
	r.Run(":8104")
}

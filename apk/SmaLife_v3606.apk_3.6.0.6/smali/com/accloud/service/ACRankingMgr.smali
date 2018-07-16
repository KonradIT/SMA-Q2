.class public interface abstract Lcom/accloud/service/ACRankingMgr;
.super Ljava/lang/Object;
.source "ACRankingMgr.java"


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract inc(Ljava/lang/String;JDLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract rangeCount(Ljava/lang/String;Ljava/lang/String;JDDLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JDD",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingCount;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ranks(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract scan(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;JDLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract totalCount(Ljava/lang/String;Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingCount;",
            ">;)V"
        }
    .end annotation
.end method

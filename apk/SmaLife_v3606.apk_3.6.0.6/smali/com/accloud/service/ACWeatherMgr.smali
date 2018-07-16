.class public interface abstract Lcom/accloud/service/ACWeatherMgr;
.super Ljava/lang/Object;
.source "ACWeatherMgr.java"


# virtual methods
.method public abstract getLastDaysAqi(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLastDaysPM25(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLastDaysWeather(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLastHoursAqi(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLastHoursPM25(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLastHoursWeather(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLatestAqi(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLatestPM25(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLatestWeather(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;)V"
        }
    .end annotation
.end method

.class public interface abstract Lorg/android/agoo/net/mtop/IMtopSynClient;
.super Ljava/lang/Object;
.source "IMtopSynClient.java"


# virtual methods
.method public abstract get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;
.end method

.method public abstract getV3ForRegister(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Ljava/util/Map;
.end method

.method public abstract setBaseUrl(Ljava/lang/String;)V
.end method

.method public abstract setDefaultAppSecret(Ljava/lang/String;)V
.end method

.method public abstract setDefaultAppkey(Ljava/lang/String;)V
.end method

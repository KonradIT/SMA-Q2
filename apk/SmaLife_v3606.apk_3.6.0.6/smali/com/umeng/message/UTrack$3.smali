.class Lcom/umeng/message/UTrack$3;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->trackAppLaunch(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v1

    .line 234
    new-instance v2, Lcom/umeng/message/proguard/l;

    iget-object v3, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-static {v3}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/message/proguard/l;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v2, v1}, Lcom/umeng/message/proguard/l;->a(Lorg/json/JSONObject;)[B

    move-result-object v1

    .line 236
    sget-object v3, Lcom/umeng/message/MsgConstant;->LAUNCH_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/umeng/message/proguard/l;->a([BLjava/lang/String;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v1

    sget-object v3, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v1, v3}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/umeng/message/MessageSharedPrefs;->setAppLaunchLogSentAt(J)V

    .line 244
    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->hasInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasLaunchPolicy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getLaunchPolicy()I

    move-result v1

    .line 246
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch_policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->hasInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->hasTagPolicy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagPolicy()I

    move-result v0

    .line 250
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag_policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    if-lez v1, :cond_1

    .line 254
    iget-object v2, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v1}, Lcom/umeng/message/MessageSharedPrefs;->setAppLaunchLogSendPolicy(I)V

    .line 257
    :cond_1
    if-lez v0, :cond_2

    .line 258
    iget-object v1, p0, Lcom/umeng/message/UTrack$3;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    .line 259
    invoke-virtual {v1, v0}, Lcom/umeng/message/MessageSharedPrefs;->setTagSendPolicy(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_2
    invoke-static {v6}, Lcom/umeng/message/UTrack;->b(Z)Z

    .line 272
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-static {v6}, Lcom/umeng/message/UTrack;->b(Z)Z

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    .line 267
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    invoke-static {v6}, Lcom/umeng/message/UTrack;->b(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/umeng/message/UTrack;->b(Z)Z

    throw v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

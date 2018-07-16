.class Lcom/umeng/message/proguard/aR$2;
.super Ljava/lang/Object;
.source "NewMessagePush.java"

# interfaces
.implements Lorg/android/agoo/net/channel/IPullHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/aR;->f(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/aR;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/aR;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/umeng/message/proguard/aR$2;->a:Lcom/umeng/message/proguard/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$2;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->c(Lcom/umeng/message/proguard/aR;J)J

    .line 1077
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$2;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;J)J

    .line 1078
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send Data--->path["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return-void
.end method

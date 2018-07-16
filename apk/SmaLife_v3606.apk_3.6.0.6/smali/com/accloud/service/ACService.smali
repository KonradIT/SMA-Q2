.class public abstract Lcom/accloud/service/ACService;
.super Ljava/lang/Object;
.source "ACService.java"


# instance fields
.field protected ac:Lcom/accloud/cloudservice/AC;

.field protected subDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/service/ACMsg;)V
.end method

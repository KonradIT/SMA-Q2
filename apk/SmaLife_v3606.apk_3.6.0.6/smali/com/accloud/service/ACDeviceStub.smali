.class public abstract Lcom/accloud/service/ACDeviceStub;
.super Ljava/lang/Object;
.source "ACDeviceStub.java"


# instance fields
.field private service:Lcom/accloud/service/ACService;


# direct methods
.method public constructor <init>(Lcom/accloud/service/ACService;)V
    .locals 0
    .param p1, "service"    # Lcom/accloud/service/ACService;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/accloud/service/ACDeviceStub;->service:Lcom/accloud/service/ACService;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract handleControlMsg(Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/service/ACDeviceMsg;)V
.end method

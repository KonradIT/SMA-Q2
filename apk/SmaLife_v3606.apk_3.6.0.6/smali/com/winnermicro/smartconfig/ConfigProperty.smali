.class Lcom/winnermicro/smartconfig/ConfigProperty;
.super Ljava/lang/Object;
.source "ConfigProperty.java"


# instance fields
.field public channel:I

.field public errorId:I

.field public scanning:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 5
    iput v0, p0, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    .line 6
    iput v0, p0, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 3
    return-void
.end method

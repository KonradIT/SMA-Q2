.class public Lcom/smalife/db/SmaDao$SleepObject;
.super Ljava/lang/Object;
.source "SmaDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/db/SmaDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SleepObject"
.end annotation


# instance fields
.field private action_time:I

.field private action_type:I

.field private sleep_type:I

.field final synthetic this$0:Lcom/smalife/db/SmaDao;


# direct methods
.method public constructor <init>(Lcom/smalife/db/SmaDao;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/smalife/db/SmaDao$SleepObject;->this$0:Lcom/smalife/db/SmaDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/db/SmaDao$SleepObject;)I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/smalife/db/SmaDao$SleepObject;->action_time:I

    return v0
.end method


# virtual methods
.method public getAction_time()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/smalife/db/SmaDao$SleepObject;->action_time:I

    return v0
.end method

.method public getAction_type()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/smalife/db/SmaDao$SleepObject;->action_type:I

    return v0
.end method

.method public getSleep_type()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/smalife/db/SmaDao$SleepObject;->sleep_type:I

    return v0
.end method

.method public setAction_time(I)V
    .locals 0
    .param p1, "action_time"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/smalife/db/SmaDao$SleepObject;->action_time:I

    .line 544
    return-void
.end method

.method public setAction_type(I)V
    .locals 0
    .param p1, "action_type"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/smalife/db/SmaDao$SleepObject;->action_type:I

    .line 536
    return-void
.end method

.method public setSleep_type(I)V
    .locals 0
    .param p1, "sleep_type"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/smalife/db/SmaDao$SleepObject;->sleep_type:I

    .line 552
    return-void
.end method

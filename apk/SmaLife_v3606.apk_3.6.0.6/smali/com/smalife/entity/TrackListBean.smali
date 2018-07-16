.class public Lcom/smalife/entity/TrackListBean;
.super Ljava/lang/Object;
.source "TrackListBean.java"


# instance fields
.field private date:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private end_time:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private start_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/smalife/entity/TrackListBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smalife/entity/TrackListBean;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smalife/entity/TrackListBean;->end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smalife/entity/TrackListBean;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/smalife/entity/TrackListBean;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/smalife/entity/TrackListBean;->date:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/smalife/entity/TrackListBean;->distance:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_time"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/smalife/entity/TrackListBean;->end_time:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smalife/entity/TrackListBean;->speed:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "start_time"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/smalife/entity/TrackListBean;->start_time:Ljava/lang/String;

    .line 20
    return-void
.end method

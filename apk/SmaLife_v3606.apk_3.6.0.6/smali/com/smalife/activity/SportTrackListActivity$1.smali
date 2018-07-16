.class Lcom/smalife/activity/SportTrackListActivity$1;
.super Ljava/lang/Object;
.source "SportTrackListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportTrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smalife/db/entity/TrackEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportTrackListActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackListActivity$1;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smalife/db/entity/TrackEntity;Lcom/smalife/db/entity/TrackEntity;)I
    .locals 4
    .param p1, "pre"    # Lcom/smalife/db/entity/TrackEntity;
    .param p2, "next"    # Lcom/smalife/db/entity/TrackEntity;

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/smalife/db/entity/TrackEntity;->getTrack_ID()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getTrack_ID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/smalife/db/entity/TrackEntity;->getTrack_ID()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getTrack_ID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/smalife/db/entity/TrackEntity;

    check-cast p2, Lcom/smalife/db/entity/TrackEntity;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/activity/SportTrackListActivity$1;->compare(Lcom/smalife/db/entity/TrackEntity;Lcom/smalife/db/entity/TrackEntity;)I

    move-result v0

    return v0
.end method

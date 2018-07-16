.class Lcom/smalife/activity/SportTrackListActivity$ViewHodler;
.super Ljava/lang/Object;
.source "SportTrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportTrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHodler"
.end annotation


# instance fields
.field date:Landroid/widget/TextView;

.field distance:Landroid/widget/TextView;

.field end_time:Landroid/widget/TextView;

.field speed:Landroid/widget/TextView;

.field start_time:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smalife/activity/SportTrackListActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/SportTrackListActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/SportTrackListActivity;Lcom/smalife/activity/SportTrackListActivity$ViewHodler;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportTrackListActivity$ViewHodler;-><init>(Lcom/smalife/activity/SportTrackListActivity;)V

    return-void
.end method

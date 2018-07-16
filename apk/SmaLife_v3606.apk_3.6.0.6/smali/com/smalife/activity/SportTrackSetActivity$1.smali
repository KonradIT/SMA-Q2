.class Lcom/smalife/activity/SportTrackSetActivity$1;
.super Ljava/lang/Object;
.source "SportTrackSetActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportTrackSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportTrackSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackSetActivity$1;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 133
    :pswitch_0
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$1;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/activity/SportTrackSetActivity;->access$0(Lcom/smalife/activity/SportTrackSetActivity;Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$1;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/activity/SportTrackSetActivity;->access$0(Lcom/smalife/activity/SportTrackSetActivity;Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0e021b
        :pswitch_0
    .end packed-switch
.end method

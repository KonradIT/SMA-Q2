.class Lcom/smalife/activity/InputActivity$1;
.super Ljava/lang/Object;
.source "InputActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/InputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/InputActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/InputActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/InputActivity$1;->this$0:Lcom/smalife/activity/InputActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 99
    packed-switch p2, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/InputActivity$1;->this$0:Lcom/smalife/activity/InputActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/activity/InputActivity;->access$0(Lcom/smalife/activity/InputActivity;I)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/InputActivity$1;->this$0:Lcom/smalife/activity/InputActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/activity/InputActivity;->access$0(Lcom/smalife/activity/InputActivity;I)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0e00eb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

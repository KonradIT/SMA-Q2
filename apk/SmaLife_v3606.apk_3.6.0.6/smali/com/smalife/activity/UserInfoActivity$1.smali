.class Lcom/smalife/activity/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/UserInfoActivity$1;->this$0:Lcom/smalife/activity/UserInfoActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 112
    .local v0, "check_id":I
    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$1;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v1}, Lcom/smalife/activity/UserInfoActivity;->access$0(Lcom/smalife/activity/UserInfoActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 115
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$1;->this$0:Lcom/smalife/activity/UserInfoActivity;

    iput v3, v1, Lcom/smalife/activity/UserInfoActivity;->sex:I

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$1;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v1}, Lcom/smalife/activity/UserInfoActivity;->access$0(Lcom/smalife/activity/UserInfoActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 119
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$1;->this$0:Lcom/smalife/activity/UserInfoActivity;

    iput v4, v1, Lcom/smalife/activity/UserInfoActivity;->sex:I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f0e00eb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/smalife/activity/SettingActivity$12;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->updateDialog_05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$12;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$12;->val$dialog:Landroid/app/Dialog;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 958
    return-void
.end method

.class Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;
.super Ljava/lang/Object;
.source "MessageSetActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MessageSetActivity$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/smalife/activity/MessageSetActivity$MyAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    iput p2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->val$index:I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->access$1(Lcom/smalife/activity/MessageSetActivity$MyAdapter;)Lcom/smalife/activity/MessageSetActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$2(Lcom/smalife/activity/MessageSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 172
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->access$1(Lcom/smalife/activity/MessageSetActivity$MyAdapter;)Lcom/smalife/activity/MessageSetActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->val$index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/AppInfo;

    .line 173
    invoke-virtual {v0}, Lcom/smalife/entity/AppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 171
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->access$1(Lcom/smalife/activity/MessageSetActivity$MyAdapter;)Lcom/smalife/activity/MessageSetActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$2(Lcom/smalife/activity/MessageSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 179
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->this$1:Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->access$1(Lcom/smalife/activity/MessageSetActivity$MyAdapter;)Lcom/smalife/activity/MessageSetActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;->val$index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/AppInfo;

    .line 180
    invoke-virtual {v0}, Lcom/smalife/entity/AppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v0

    .line 181
    const/4 v2, 0x0

    .line 178
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

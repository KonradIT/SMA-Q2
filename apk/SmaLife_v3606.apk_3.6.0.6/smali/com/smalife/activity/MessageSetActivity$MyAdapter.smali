.class Lcom/smalife/activity/MessageSetActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MessageSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MessageSetActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/MessageSetActivity;Lcom/smalife/activity/MessageSetActivity$MyAdapter;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/MessageSetActivity$MyAdapter;)Lcom/smalife/activity/MessageSetActivity;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "hodler":Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    if-nez p2, :cond_0

    .line 145
    new-instance v0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;

    .end local v0    # "hodler":Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    iget-object v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-direct {v0, v2, v4}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;-><init>(Lcom/smalife/activity/MessageSetActivity;Lcom/smalife/activity/MessageSetActivity$ViewHodler;)V

    .line 146
    .restart local v0    # "hodler":Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    iget-object v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    .line 147
    const v3, 0x7f03000b

    .line 146
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 149
    const v2, 0x7f0e002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 148
    invoke-static {v0, v2}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$1(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/ImageView;)V

    .line 151
    const v2, 0x7f0e002e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 150
    invoke-static {v0, v2}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$2(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/TextView;)V

    .line 153
    const v2, 0x7f0e002f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 152
    invoke-static {v0, v2}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$3(Lcom/smalife/activity/MessageSetActivity$ViewHodler;Landroid/widget/CheckBox;)V

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    :goto_0
    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$4(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v2}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/AppInfo;

    .line 159
    invoke-virtual {v2}, Lcom/smalife/entity/AppInfo;->getApp_icon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$5(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v2}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/AppInfo;

    invoke-virtual {v2}, Lcom/smalife/entity/AppInfo;->getApp_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move v1, p1

    .line 162
    .local v1, "index":I
    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$6(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/smalife/activity/MessageSetActivity$MyAdapter$1;-><init>(Lcom/smalife/activity/MessageSetActivity$MyAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity$ViewHodler;->access$6(Lcom/smalife/activity/MessageSetActivity$ViewHodler;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    iget-object v2, p0, Lcom/smalife/activity/MessageSetActivity$MyAdapter;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v2}, Lcom/smalife/activity/MessageSetActivity;->access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/AppInfo;

    .line 186
    invoke-virtual {v2}, Lcom/smalife/entity/AppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v4, v2}, Lcom/smalife/activity/MessageSetActivity;->access$3(Lcom/smalife/activity/MessageSetActivity;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    return-object p2

    .line 156
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "hodler":Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    check-cast v0, Lcom/smalife/activity/MessageSetActivity$ViewHodler;

    .restart local v0    # "hodler":Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    goto :goto_0
.end method

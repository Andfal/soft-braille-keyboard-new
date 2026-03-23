.class public Lcom/nirenr/talkman/TalkManSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:[Ljava/lang/String;

.field private final b:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v3, Lcom/nirenr/talkman/settings/MainTtsSetting;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Lcom/nirenr/talkman/settings/AsyncTtsSetting;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-class v3, Lcom/nirenr/talkman/settings/FeedBackSetting;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/nirenr/talkman/settings/ContentSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/nirenr/talkman/settings/NotificationSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/nirenr/talkman/settings/VoiceHelperSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/nirenr/talkman/PluginActivity;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/nirenr/talkman/ToolActivity;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/nirenr/talkman/settings/VoiceCmdManager;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/androlua/LuaEditActivity;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManSetting;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/String;

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f07092f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const v0, 0x7f070310

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const v0, 0x7f070155

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const v0, 0x7f0706a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p1, v2

    const v0, 0x7f070277

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, p1, v2

    const v0, 0x7f0702ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, p1, v2

    const v0, 0x7f0702cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, p1, v2

    const v0, 0x7f0701a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, p1, v2

    const v0, 0x7f0704b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, p1, v2

    const v0, 0x7f070949

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, p1, v2

    const v0, 0x7f070525

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, p1, v2

    const v0, 0x7f07068f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, p1, v2

    const v0, 0x7f070938

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, p1, v2

    const v0, 0x7f070249

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManSetting;->a:[Ljava/lang/String;

    new-instance p1, Landroid/widget/GridView;

    invoke-direct {p1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManSetting;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManSetting;->b:[Ljava/lang/Class;

    aget-object p1, p1, p3

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManSetting;->b:[Ljava/lang/Class;

    aget-object p2, p2, p3

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

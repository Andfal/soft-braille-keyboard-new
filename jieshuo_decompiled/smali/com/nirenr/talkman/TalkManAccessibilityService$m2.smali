.class Lcom/nirenr/talkman/TalkManAccessibilityService$m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->addTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/androlua/LuaDialog;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->a:Lcom/androlua/LuaDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addTimer(Ljava/util/ArrayList;)Z

    return-void
.end method

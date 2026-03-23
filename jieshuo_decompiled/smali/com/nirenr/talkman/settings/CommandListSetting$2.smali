.class Lcom/nirenr/talkman/settings/CommandListSetting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CommandListSetting;->h(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/CommandListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CommandListSetting;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->a:[Ljava/lang/String;

    aget-object p1, p1, p3

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const p4, 0x7f0701f9

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const p4, 0x7f0701f1

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const p4, 0x7f0701fe

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const p4, 0x7f0701fd

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const p4, 0x7f070032

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p2, Lk2/p;

    invoke-direct {p2}, Lk2/p;-><init>()V

    invoke-static {p3, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p2, Lcom/nirenr/talkman/dialog/FileDialog;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-direct {p2, p4, p4, p1, p3}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->a:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->onAdd(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance p2, Lcom/nirenr/talkman/dialog/FileDialog;

    iget-object p3, p0, Lcom/nirenr/talkman/settings/CommandListSetting$2;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-direct {p2, p3, p3, p1}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->j(Landroid/widget/TextView;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Lcom/androlua/LuaDialog;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->e:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->a:Lcom/androlua/LuaDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$9;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

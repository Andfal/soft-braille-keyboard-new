.class Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;

.field final synthetic b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$1;->a:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$1;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

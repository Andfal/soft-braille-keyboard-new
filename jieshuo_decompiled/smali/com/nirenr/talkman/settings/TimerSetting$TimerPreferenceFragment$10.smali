.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$10;
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

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$10;->a:Lcom/androlua/LuaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$10;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

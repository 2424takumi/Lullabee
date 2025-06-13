import 'package:flutter/material.dart';
import 'lullabee_theme.dart';

/// Lullabee Component Showcase
/// デザインシステムのコンポーネント使用例
class ComponentsShowcase extends StatelessWidget {
  const ComponentsShowcase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Lullabee Components'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(theme.spacingMd),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Buttons Section
            _buildSectionTitle(context, 'ボタン / Buttons'),
            SizedBox(height: theme.spacingMd),
            _buildButtonExamples(context),
            
            SizedBox(height: theme.spacingXl),
            
            // Cards Section
            _buildSectionTitle(context, 'カード / Cards'),
            SizedBox(height: theme.spacingMd),
            _buildCardExamples(context),
            
            SizedBox(height: theme.spacingXl),
            
            // Input Fields Section
            _buildSectionTitle(context, '入力フィールド / Input Fields'),
            SizedBox(height: theme.spacingMd),
            _buildInputExamples(context),
            
            SizedBox(height: theme.spacingXl),
            
            // Avatar Section
            _buildSectionTitle(context, 'アバター / Avatars'),
            SizedBox(height: theme.spacingMd),
            _buildAvatarExamples(context),
            
            SizedBox(height: theme.spacingXl),
            
            // Family Profile Card
            _buildSectionTitle(context, '家族プロフィールカード'),
            SizedBox(height: theme.spacingMd),
            _buildFamilyProfileCard(context),
            
            SizedBox(height: theme.spacingXl),
            
            // Recording Button
            _buildSectionTitle(context, '録音ボタン'),
            SizedBox(height: theme.spacingMd),
            _buildRecordingButton(context),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
  
  Widget _buildButtonExamples(BuildContext context) {
    final theme = Theme.of(context);
    
    return Wrap(
      spacing: theme.spacingMd,
      runSpacing: theme.spacingMd,
      children: [
        // Primary Button
        ElevatedButton(
          onPressed: () {},
          child: Text('プライマリボタン'),
        ),
        
        // Secondary Button
        OutlinedButton(
          onPressed: () {},
          child: Text('セカンダリボタン'),
        ),
        
        // Text Button
        TextButton(
          onPressed: () {},
          child: Text('テキストボタン'),
        ),
        
        // Icon Button
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(theme.radiusSm),
            boxShadow: theme.shadow1,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
  
  Widget _buildCardExamples(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        // Basic Card
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(theme.spacingMd),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(theme.radiusMd),
            boxShadow: theme.shadow2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ベーシックカード',
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: theme.spacingSm),
              Text(
                'これは基本的なカードのデザインです。影と角丸で優しい印象を与えます。',
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        
        SizedBox(height: theme.spacingMd),
        
        // Interactive Card
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(theme.radiusMd),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(theme.spacingMd),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(theme.radiusMd),
                boxShadow: theme.shadow2,
              ),
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: theme.accent1,
                      borderRadius: BorderRadius.circular(theme.radiusSm),
                    ),
                    child: Icon(
                      Icons.music_note,
                      color: theme.primaryYellow,
                    ),
                  ),
                  SizedBox(width: theme.spacingMd),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'インタラクティブカード',
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          'タップできるカードです',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildInputExamples(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        // Text Input
        TextField(
          decoration: InputDecoration(
            labelText: 'お名前',
            hintText: '山田太郎',
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        
        SizedBox(height: theme.spacingMd),
        
        // Search Input
        TextField(
          decoration: InputDecoration(
            hintText: '検索...',
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildAvatarExamples(BuildContext context) {
    final theme = Theme.of(context);
    
    return Row(
      children: [
        // Small Avatar
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: theme.accent1,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '田',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.primaryYellow,
              ),
            ),
          ),
        ),
        
        SizedBox(width: theme.spacingMd),
        
        // Medium Avatar
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: theme.accent2,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.person,
              color: theme.secondaryPeach,
              size: 32,
            ),
          ),
        ),
        
        SizedBox(width: theme.spacingMd),
        
        // Large Avatar with Border
        Container(
          width: 80,
          height: 80,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: theme.primaryYellow,
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: theme.accent3,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '👶',
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildFamilyProfileCard(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      padding: EdgeInsets.all(theme.spacingMd),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(theme.radiusMd),
        boxShadow: theme.shadow2,
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: theme.accent1,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '👨',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          SizedBox(width: theme.spacingMd),
          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '山田太郎',
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: theme.spacingXs),
                Text(
                  'お父さん',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          // Action
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: theme.colorScheme.onSurface.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
  
  Widget _buildRecordingButton(BuildContext context) {
    final theme = Theme.of(context);
    
    return Center(
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: theme.primaryYellow,
          shape: BoxShape.circle,
          boxShadow: theme.shadow3,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(theme.radiusFull),
            child: Center(
              child: Icon(
                Icons.mic,
                color: Colors.white,
                size: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Demo Page to view the showcase
class ComponentsShowcasePage extends StatelessWidget {
  const ComponentsShowcasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lullabee Components',
      theme: LullabeeTheme.lightTheme(),
      darkTheme: LullabeeTheme.darkTheme(),
      home: const ComponentsShowcase(),
    );
  }
}